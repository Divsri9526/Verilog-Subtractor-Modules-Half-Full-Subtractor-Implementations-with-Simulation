# Verilog Subtractor Simulation Projects

This repository contains Verilog HDL implementations and testbenches for three fundamental digital arithmetic modules: Half Subtractor, Full Subtractor, and Full Subtractor using Half Subtractors. Each design is verified through functional simulation using Icarus Verilog with $monitor outputs and .vcd waveform generation for visualization in GTKWave. The project demonstrates clean module design, hierarchical structuring, and systematic verification of basic combinational circuits.

---

## 📌 1. Half Subtractor

### Module
Performs binary subtraction between two single-bit inputs `A` (minuend) and `B` (subtrahend).

**Logic Equations:**
- Difference = `A ^ B`
- Borrow = `(~A) & B`

**Truth Table:**

| A | B | Diff | Borrow |
|---|---|------|--------|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

---

## 📌 2. Full Subtractor

### Module
Performs binary subtraction with an additional borrow-in input `Bin`.

**Logic Equations:**
- Difference = `A ^ B ^ Bin`
- Borrow Out = `(~A & B) | (~(A ^ B) & Bin)`

**Truth Table:**

| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  1   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

---

## 📌 3. Full Subtractor using Half Subtractors

### Architecture
Implements a Full Subtractor using:
- **Two Half Subtractor modules**
- **One OR gate** for final borrow calculation.

## 📚 Tools Used

- Verilog HDL
- Icarus Verilog (Simulation)
