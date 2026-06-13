# Automatic Braking System Using Fuzzy Logic

## Final Project

### Overview

Automatic Braking System Using Fuzzy Logic is a decision-support application developed using **Object Pascal** and **Lazarus IDE**. The system applies fuzzy logic principles to automatically determine the appropriate braking level based on a vehicle's distance from an obstacle and its current speed.

The application simulates an intelligent braking system that assists drivers by recommending braking actions ranging from no braking to hard braking.

---

## Objectives

- Implement fuzzy logic concepts in a real-world automotive application.
- Determine braking levels automatically based on vehicle conditions.
- Demonstrate fuzzification, fuzzy inference, and defuzzification processes.
- Provide a graphical interface for visualizing membership functions and rule evaluation.

---

## Input Variables

The system uses two input variables:

### 1. Distance

Represents the distance between the vehicle and an obstacle.

Linguistic terms:

- Short
- Medium
- Long
- Very Long

### 2. Speed

Represents the current vehicle speed.

Linguistic terms:

- Low
- Medium
- High
- Very High

---

## Output Variable

### Braking Level

Represents the recommended braking intensity.

Linguistic terms:

- No Brake
- Soft
- Moderate
- Hard

---

## Membership Functions

### Distance Membership Function (IMF)

| Linguistic Term | Shape |
|---------------|--------|
| Short | Trapezoidal |
| Medium | Triangular |
| Long | Triangular |
| Very Long | Trapezoidal |

### Speed Membership Function (IMF)

| Linguistic Term | Shape |
|---------------|--------|
| Low | Trapezoidal |
| Medium | Triangular |
| High | Triangular |
| Very High | Trapezoidal |

### Braking Level Membership Function (OMF)

| Linguistic Term | Shape |
|---------------|--------|
| No Brake | Triangular |
| Soft | Triangular |
| Moderate | Triangular |
| Hard | Triangular |

---

## Fuzzy Rule Base

The system contains 16 fuzzy rules.

| Speed \\ Distance | Short | Medium | Long | Very Long |
|------------------|--------|---------|------|------------|
| Low | Soft | Soft | No Brake | No Brake |
| Medium | Moderate | Soft | No Brake | No Brake |
| High | Hard | Moderate | Moderate | Moderate |
| Very High | Hard | Moderate | Moderate | Moderate |

### Example Rules

```text
IF Distance is Short AND Speed is Low
THEN Braking Level is Soft

IF Distance is Short AND Speed is High
THEN Braking Level is Hard

IF Distance is Long AND Speed is Low
THEN Braking Level is No Brake

IF Distance is Medium AND Speed is Very High
THEN Braking Level is Moderate
```

---

## Technologies Used

- Object Pascal
- Lazarus IDE
- Fuzzy Logic
- Graphical User Interface (GUI)

---

## How to Open the Project

1. Open Lazarus IDE.
2. Select **File → Open Project**.
3. Open `project1.ctpr`.
4. Build and run the project.

---

## Authors

Windy Deftia M

---

## License

This project was developed for educational and academic purposes only.