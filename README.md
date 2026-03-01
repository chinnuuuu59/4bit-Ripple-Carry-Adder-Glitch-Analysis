# Glitch Power Analysis in 4-Bit Ripple Carry Adder (RCA)

## 📌 Project Overview

This project analyzes **glitch power** in a 4-bit Ripple Carry Adder (RCA) using Verilog HDL.  
The objective is to study how propagation delay in the carry path affects switching activity and dynamic power consumption.

Glitches are unwanted temporary transitions that occur due to unequal signal arrival times in combinational circuits. These transitions increase switching activity, thereby increasing dynamic power dissipation.

---

## 🎯 Objectives

- Design a 4-bit Ripple Carry Adder using Verilog
- Introduce artificial carry propagation delays
- Observe glitch behavior in simulation waveforms
- Compare switching activity for different delay values
- Analyze the impact of glitches on dynamic power

---

## 🧠 Background Theory

Dynamic Power in CMOS circuits is given by:

P = α C V² f

Where:
- α = Switching activity
- C = Load capacitance
- V = Supply voltage
- f = Operating frequency

Glitches increase the switching activity factor (α), which directly increases dynamic power.

Ripple Carry Adders are prone to glitching due to sequential carry propagation from LSB to MSB.

---

## 🏗️ Design Details

The 4-bit Ripple Carry Adder is implemented using:

- Four Full Adder modules
- Structural modeling in Verilog
- Cascaded carry propagation

Two delay cases were analyzed:

- Case 1: Carry delay = #2
- Case 2: Carry delay = #15

The MSB output was monitored to observe switching variations.

---

## 🛠️ Tools Used

- Verilog HDL
- (Mention your simulator: ModelSim / Vivado)
- MATLAB (for switching activity graph analysis)

---

## 📊 Results

- Smaller delay (#2) → Fewer transitions → Lower switching activity
- Larger delay (#15) → More intermediate transitions → Higher switching activity

The results confirm that glitch power increases with propagation delay in ripple carry structures.

---

## 📂 Project Structure

```
Glitch-Power-Analysis-4bit-RCA/
│
├── full_adder.v
├── ripple_carry_adder.v
├── testbench.v
├── waveforms/ glitch _#2/ glitch _#5 / glitch _#10/ glitch _#15
├── matlab_analysis/ glitch plot matlab 
├──Analysis of Glitch Power project report.pdf
└── README.md
```

---

## 🔬 Key Observations

- Ripple Carry Adder suffers from linear carry delay
- Increased delay causes multiple MSB transitions
- Dynamic power is directly proportional to switching activity
- Glitch power can significantly affect low-power designs

---

## 🚀 Future Improvements

- Comparison with Carry Lookahead Adder (CLA)
- Power estimation using EDA tools
- Glitch reduction techniques
- Extension to higher bit-width adders

---

## 👩‍🎓 Author

**Gollapalli Lakshmi Priya Sowjanya**  
ID: O210194  
Electronics and Communication Engineering  
RGUKT IIIT Ongole  

---

## 📜 License

This project is licensed under the MIT License.
