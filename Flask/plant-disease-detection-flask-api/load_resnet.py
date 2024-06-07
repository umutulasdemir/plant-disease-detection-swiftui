import os
import torch
from resnet9_disease_detection import ResNet9


def load_resnet_disease_detection_model(checkpoint_path):
    if not os.path.exists(checkpoint_path):
        print("Invalid path")
        return
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = ResNet9(3, 38)  # num_classes, modelinizdeki sınıf sayısıdır
    model.load_state_dict(torch.load(checkpoint_path, map_location=device))
    model.eval()

    print("Checkpoints loaded from path: {}".format(checkpoint_path))

    return model
