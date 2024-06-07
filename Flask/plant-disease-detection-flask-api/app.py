import torch
from PIL import Image
from flask import Flask, request, jsonify
from flask_cors import CORS
import torchvision.transforms as transforms

import io
import base64

from load_resnet import load_resnet_disease_detection_model

app = Flask(__name__)
CORS(app)

classes = ['Apple___Apple_scab',
 'Apple___Black_rot',
 'Apple___Cedar_apple_rust',
 'Apple___healthy',
 'Blueberry___healthy',
 'Cherry_(including_sour)___Powdery_mildew',
 'Cherry_(including_sour)___healthy',
 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot',
 'Corn_(maize)___Common_rust_',
 'Corn_(maize)___Northern_Leaf_Blight',
 'Corn_(maize)___healthy',
 'Grape___Black_rot',
 'Grape___Esca_(Black_Measles)',
 'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)',
 'Grape___healthy',
 'Orange___Haunglongbing_(Citrus_greening)',
 'Peach___Bacterial_spot',
 'Peach___healthy',
 'Pepper,_bell___Bacterial_spot',
 'Pepper,_bell___healthy',
 'Potato___Early_blight',
 'Potato___Late_blight',
 'Potato___healthy',
 'Raspberry___healthy',
 'Soybean___healthy',
 'Squash___Powdery_mildew',
 'Strawberry___Leaf_scorch',
 'Strawberry___healthy',
 'Tomato___Bacterial_spot',
 'Tomato___Early_blight',
 'Tomato___Late_blight',
 'Tomato___Leaf_Mold',
 'Tomato___Septoria_leaf_spot',
 'Tomato___Spider_mites Two-spotted_spider_mite',
 'Tomato___Target_Spot',
 'Tomato___Tomato_Yellow_Leaf_Curl_Virus',
 'Tomato___Tomato_mosaic_virus',
 'Tomato___healthy']


# for moving data to device (CPU or GPU)
def to_device(data, device):
    """Move tensor(s) to chosen device"""
    if isinstance(data, (list, tuple)):
        return [to_device(x, device) for x in data]
    return data.to(device, non_blocking=True)


def predict_image(img, model):

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    xb = to_device(img.unsqueeze(0), device)

    # Get predictions from model
    yb = model(xb)
    # Pick index with highest probability
    _, preds  = torch.max(yb, dim=1)
    # Retrieve the class label

    return classes[preds[0].item()]


@app.route('/predict', methods=['POST'])
def predict():
    base64_string = request.json.get('image')
    input_bytes = base64.b64decode(base64_string)
    img = Image.open(io.BytesIO(input_bytes)).convert('RGB')

    resnet = load_resnet_disease_detection_model("plant-disease-model.pth")

    input_image = img.resize((256, 256))

    transform_fn = transforms.Compose(
        [transforms.ToTensor()]
    )
    image_tensor = transform_fn(input_image)

    returned = predict_image(image_tensor, resnet)

    response = {
        'disease': returned
    }
    return jsonify(response)


if __name__ == '__main__':
    #app.run(debug=True, host="your api address", port=your port)
