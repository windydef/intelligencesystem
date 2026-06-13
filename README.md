# Intelligent Systems Projects Collection

A collection of Artificial Intelligence and Computational Intelligence projects developed using **Object Pascal** and **Lazarus IDE**. This repository contains implementations of fundamental intelligent system concepts, including Artificial Neural Networks (ANN), Fuzzy Logic, Perceptrons, ADALINE, and McCulloch-Pitts Neural Networks.

The projects were developed as part of the **Fundamentals of Intelligent Systems** coursework at Institut Teknologi Sepuluh Nopember (ITS).

---

## Repository Structure

```text
intelligence-system-projects/
│
├── ann_activationfunction/
│   └── Activation function visualization and analysis
│
├── fuzzification/
│   └── Fuzzy membership function implementation
│
├── fuzzy_operation/
│   └── Fuzzy set operations and fuzzy laws
│
├── lms_adaline_method1/
│   └── ADALINE learning algorithm implementation
│
├── single_layer_perceptron/
│   └── Single Layer Perceptron implementation
│
├── multi_layer_perceptron/
│   └── Multi Layer Perceptron implementation
│
├── xnor/
│   └── McCulloch-Pitts XNOR neural network
│
├── doc/
│   └── Project documentation and reports
│
├── Report_Adaptive Linear Neuron.pdf
├── Report_ANN Activation Function.pdf
├── Report_Fuzzy Logic.pdf
├── Report_Single Layer Perceptron and Multi Layer Perceptron.pdf
├── Report_XNOR with McCulloh Pitts Method.pdf
│
└── README.md
```

---

# Projects Overview

## 1. ANN Activation Functions

This project demonstrates various activation functions commonly used in Artificial Neural Networks (ANN).

### Implemented Functions

- Hard Limit
- Symmetrical Hard Limit
- Linear
- Saturating Linear
- Symmetrical Saturating Linear
- Log-Sigmoid
- Hyperbolic Tangent Sigmoid
- Positive Linear
- Competitive Function

### Features

- Activation function visualization
- Adjustable parameters
- Sigmoid derivative calculation
- Hyperbolic tangent derivative visualization

---

## 2. Fuzzification

This project implements fuzzy membership functions and demonstrates how crisp values are transformed into fuzzy values.

### Membership Functions

- Linear
- Triangular
- Trapezoidal
- Sigmoid
- Bell Curve

### Features

- Fuzzification process visualization
- Membership degree calculation
- Fuzzy set representation
- Interactive parameter modification

---

## 3. Fuzzy Operations

This project implements fundamental fuzzy set operations and validates fuzzy logic laws.

### Implemented Operations

#### Basic Operations

- Union (OR)
- Intersection (AND)
- Complement (NOT)

#### Fuzzy Logic Laws

- De Morgan's Law
- Exclusive Middle Law

### Features

- Graphical visualization of fuzzy sets
- Comparison with manual calculations
- Membership degree plotting
- Validation of fuzzy set theory principles

---

## 4. ADALINE (Adaptive Linear Neuron)

Implementation of the ADALINE neural network proposed by Widrow and Hoff.

### Learning Methods

- LMS (Least Mean Squares)
- Delta Rule
- Adaptive Weight Updating

### Features

- Weight adaptation visualization
- MSE monitoring
- Learning parameter experimentation
- Epoch analysis

### Parameters

- Learning Rate (μ)
- Alpha (α)
- Epsilon (ε)
- Tau (τ)

---

## 5. Single Layer Perceptron

Implementation of a supervised learning neural network for simple pattern classification.

### Features

- Binary classification
- Threshold adjustment
- Weight training
- Logic gate simulation

### Learning Process

- Forward propagation
- Error calculation
- Weight update mechanism
- Convergence analysis

---

## 6. Multi Layer Perceptron (MLP)

Implementation of a feed-forward neural network with hidden layers and backpropagation learning.

### Features

- Multiple hidden layers
- Backpropagation algorithm
- Character recognition
- Error analysis

### Character Recognition

The system is trained to recognize:

- H
- E
- T
- O

Each character is represented as:

```text
12 × 12 pixels
144 binary inputs
```

### Performance Analysis

The project evaluates:

- Learning rate effects
- Hidden layer configuration
- Bit error tolerance
- Mean Squared Error (MSE)
- Training convergence

---

## 7. XNOR using McCulloch-Pitts Method

Implementation of a McCulloch-Pitts Neural Network to solve a 7-input XNOR logic problem.

### Features

- McCulloch-Pitts neuron model
- Binary activation function
- Threshold-based firing mechanism
- Sum-of-Products (SOP) implementation
- XNOR truth table generation

### Concepts Covered

- Threshold logic
- Logic gate modeling
- Neural computation fundamentals
- Early neural network architectures

---

# Technologies Used

| Technology | Description |
|------------|-------------|
| Object Pascal | Programming Language |
| Lazarus IDE | Development Environment |
| Artificial Neural Networks | Machine Learning Models |
| Fuzzy Logic | Computational Intelligence |
| LMS Algorithm | Adaptive Learning |
| Backpropagation | Neural Network Training |

---

# Learning Topics Covered

This repository demonstrates:

- Artificial Neural Networks (ANN)
- McCulloch-Pitts Networks
- ADALINE Networks
- Single Layer Perceptrons
- Multi Layer Perceptrons
- Backpropagation
- Activation Functions
- Fuzzy Sets
- Fuzzy Logic
- Fuzzification
- Fuzzy Operations
- Pattern Recognition
- Computational Intelligence

---

# Requirements

### Development Environment

- Lazarus IDE
- Free Pascal Compiler (FPC)

### Operating System

- Windows
- Linux
- macOS

---

# Getting Started

### Clone Repository

```bash
git clone https://github.com/yourusername/intelligence-system-projects.git
```

### Open a Project

1. Launch Lazarus IDE.
2. Navigate to the desired project folder.
3. Open the project file.
4. Build and run the application.

---

# Educational Purpose

This repository was created for academic and educational purposes to explore the fundamental concepts of:

- Artificial Intelligence
- Computational Intelligence
- Neural Networks
- Fuzzy Logic Systems

---

# References

The theoretical foundations and experiments are documented in the accompanying reports:

- Adaptive Linear Neuron (ADALINE)
- ANN Activation Function Analysis
- Fuzzy Logic
- Single Layer and Multi Layer Perceptrons
- XNOR using McCulloch-Pitts Method

---

# Author

**Windy Deftia M**
Year creation: 2018

Biomedical Engineering  
Institut Teknologi Sepuluh Nopember (ITS)

---

# License

This project is intended for educational and research purposes.