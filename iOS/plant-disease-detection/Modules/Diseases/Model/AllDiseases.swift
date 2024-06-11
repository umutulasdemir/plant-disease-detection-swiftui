//
//  File.swift
//  plant-disease-detection
//
//  Created by Umut Ulaş Demir on 12.06.2024.
//

let diseaseDescriptions: [String: (description: String, treatment: String)] = [
    "Apple___Apple_scab": (
        description: "Apple scab is a fungal disease that affects apple trees, causing dark, scab-like lesions on leaves, fruit, and twigs.",
        treatment: "Apply fungicides at the first sign of disease and prune affected areas."
    ),
    "Apple___Black_rot": (
        description: "Black rot is a fungal disease that affects apple trees, causing dark, sunken lesions on fruit, leaves, and bark.",
        treatment: "Remove and destroy infected fruit and prune affected branches."
    ),
    "Apple___Cedar_apple_rust": (
        description: "Cedar apple rust is a fungal disease that affects apple trees and cedar trees, causing yellow spots on leaves and orange, spore-producing lesions.",
        treatment: "Apply fungicides and remove nearby cedar trees if possible."
    ),
    "Apple___healthy": (
        description: "The apple tree is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Blueberry___healthy": (
        description: "The blueberry plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Cherry_(including_sour)___Powdery_mildew": (
        description: "Powdery mildew is a fungal disease that affects cherry trees, causing a white, powdery coating on leaves and fruit.",
        treatment: "Apply fungicides and ensure good air circulation around the trees."
    ),
    "Cherry_(including_sour)___healthy": (
        description: "The cherry tree is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot": (
        description: "Gray leaf spot is a fungal disease that affects corn, causing rectangular lesions on leaves that eventually turn gray.",
        treatment: "Apply fungicides and rotate crops to reduce disease pressure."
    ),
    "Corn_(maize)___Common_rust_": (
        description: "Common rust is a fungal disease that affects corn, causing rust-colored pustules on leaves.",
        treatment: "Apply fungicides and plant rust-resistant corn varieties."
    ),
    "Corn_(maize)___Northern_Leaf_Blight": (
        description: "Northern leaf blight is a fungal disease that affects corn, causing large, tan lesions on leaves.",
        treatment: "Apply fungicides and use resistant hybrids."
    ),
    "Corn_(maize)___healthy": (
        description: "The corn plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Grape___Black_rot": (
        description: "Black rot is a fungal disease that affects grapevines, causing black, shriveled fruit and leaf lesions.",
        treatment: "Apply fungicides and remove infected plant debris."
    ),
    "Grape___Esca_(Black_Measles)": (
        description: "Esca, also known as black measles, is a fungal disease that affects grapevines, causing dark streaks in the wood and leaf striping.",
        treatment: "Prune out affected wood and avoid wounding the vines."
    ),
    "Grape___Leaf_blight_(Isariopsis_Leaf_Spot)": (
        description: "Leaf blight, also known as Isariopsis leaf spot, is a fungal disease that affects grapevines, causing dark, angular spots on leaves.",
        treatment: "Apply fungicides and ensure good air circulation."
    ),
    "Grape___healthy": (
        description: "The grapevine is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Orange___Haunglongbing_(Citrus_greening)": (
        description: "Haunglongbing, also known as citrus greening, is a bacterial disease that affects citrus trees, causing yellow shoots, misshapen fruit, and tree decline.",
        treatment: "Remove and destroy infected trees and control the Asian citrus psyllid vector."
    ),
    "Peach___Bacterial_spot": (
        description: "Bacterial spot is a bacterial disease that affects peach trees, causing small, dark, water-soaked spots on leaves, fruit, and twigs.",
        treatment: "Apply bactericides and remove infected plant material."
    ),
    "Peach___healthy": (
        description: "The peach tree is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Pepper,_bell___Bacterial_spot": (
        description: "Bacterial spot is a bacterial disease that affects bell pepper plants, causing small, water-soaked spots on leaves and fruit.",
        treatment: "Apply bactericides and remove infected plant material."
    ),
    "Pepper,_bell___healthy": (
        description: "The bell pepper plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Potato___Early_blight": (
        description: "Early blight is a fungal disease that affects potato plants, causing concentric ring lesions on leaves and tubers.",
        treatment: "Apply fungicides and practice crop rotation."
    ),
    "Potato___Late_blight": (
        description: "Late blight is a fungal disease that affects potato plants, causing large, water-soaked lesions on leaves and tubers.",
        treatment: "Apply fungicides and remove infected plant material."
    ),
    "Potato___healthy": (
        description: "The potato plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Raspberry___healthy": (
        description: "The raspberry plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Soybean___healthy": (
        description: "The soybean plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Squash___Powdery_mildew": (
        description: "Powdery mildew is a fungal disease that affects squash plants, causing a white, powdery coating on leaves.",
        treatment: "Apply fungicides and ensure good air circulation."
    ),
    "Strawberry___Leaf_scorch": (
        description: "Leaf scorch is a fungal disease that affects strawberry plants, causing dark, necrotic spots on leaves.",
        treatment: "Apply fungicides and remove infected leaves."
    ),
    "Strawberry___healthy": (
        description: "The strawberry plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
    ),
    "Tomato___Bacterial_spot": (
        description: "Bacterial spot is a bacterial disease that affects tomato plants, causing small, water-soaked spots on leaves and fruit.",
        treatment: "Apply bactericides and remove infected plant material."
    ),
    "Tomato___Early_blight": (
        description: "Early blight is a fungal disease that affects tomato plants, causing concentric ring lesions on leaves and fruit.",
        treatment: "Apply fungicides and practice crop rotation."
    ),
    "Tomato___Late_blight": (
        description: "Late blight is a fungal disease that affects tomato plants, causing large, water-soaked lesions on leaves and fruit.",
        treatment: "Apply fungicides and remove infected plant material."
    ),
    "Tomato___Leaf_Mold": (
        description: "Leaf mold is a fungal disease that affects tomato plants, causing yellow spots on leaves and a fuzzy, gray mold on the undersides.",
        treatment: "Apply fungicides and ensure good air circulation."
    ),
    "Tomato___Septoria_leaf_spot": (
        description: "Septoria leaf spot is a fungal disease that affects tomato plants, causing small, circular spots with gray centers on leaves.",
        treatment: "Apply fungicides and remove infected leaves."
    ),
    "Tomato___Spider_mites Two-spotted_spider_mite": (
        description: "Two-spotted spider mites are pests that affect tomato plants, causing stippling and yellowing of leaves.",
        treatment: "Apply miticides and ensure good plant health."
    ),
    "Tomato___Target_Spot": (
        description: "Target spot is a fungal disease that affects tomato plants, causing circular lesions with concentric rings on leaves and fruit.",
        treatment: "Apply fungicides and remove infected plant material."
    ),
    "Tomato___Tomato_Yellow_Leaf_Curl_Virus": (
        description: "Tomato yellow leaf curl virus is a viral disease that affects tomato plants, causing yellowing and curling of leaves and stunted growth.",
        treatment: "Control the whitefly vector and use resistant varieties."
    ),
    "Tomato___Tomato_mosaic_virus": (
        description: "Tomato mosaic virus is a viral disease that affects tomato plants, causing mottled, discolored leaves and reduced fruit yield.",
        treatment: "Remove infected plants and use resistant varieties."
    ),
    "Tomato___healthy": (
        description: "The tomato plant is healthy with no signs of disease.",
        treatment: "Maintain good cultural practices and monitor for signs of disease."
        )
]
