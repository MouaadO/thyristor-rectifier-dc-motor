# Thyristor Rectifier and DC Motor

Practical implementation of a thyristor rectifier supplying a DC machine. I studied the effect of firing angle, conduction mode and a freewheeling diode through laboratory measurements and MATLAB calculations.

## Practical implementation and experimental validation

- Implemented and studied the rectifier/DC-machine arrangement in the laboratory.
- Recorded output voltage and current waveforms while varying the firing angle.
- Analysed average rectified voltage, current and motor speed versus firing angle.
- Compared operation with a freewheeling diode and with an additional smoothing inductor.
- Compared experimental observations with the theoretical and simulation results documented in the French report.

### Simulation circuit

![Simulation diagram](simulation-diagram.png)

### Experimental waveform capture

![Experimental oscilloscope waveforms](experimental-waveforms.png)

Oscilloscope measurements from the practical work. Circuit settings and measurement conditions are given in the report.

## Repository contents

| File | Purpose |
| --- | --- |
| [thyristor-dc-motor-report-fr.pdf](thyristor-dc-motor-report-fr.pdf) | Full French report: experimental setup, measurements, calculations and simulation comparisons. |
| [results-and-waveforms.zip](results-and-waveforms.zip) | Circuit diagrams, waveforms and spectra. |
| [simulation-diagram.png](simulation-diagram.png) | Simulation circuit diagram. |
| [conduction-angle.m](conduction-angle.m) | MATLAB analysis script. |
| [freewheeling-diode-analysis.m](freewheeling-diode-analysis.m) | MATLAB analysis script. |
| [rectifier-characteristics.m](rectifier-characteristics.m) | MATLAB analysis script. |
| [average-voltage-analysis.m](average-voltage-analysis.m) | MATLAB analysis script. |

## Getting started

1. Read the French report to understand the circuit, operating conditions and measurement protocol.
2. Extract `results-and-waveforms.zip` to inspect the recorded results and simulation figures.
3. Run the MATLAB analysis scripts individually and use the circuit diagrams in the report for the simulation study.

## Software requirements

MATLAB and Symbolic Math Toolbox for the analytical scripts.

## Project context

Power-electronics group project completed at the National Polytechnic School of Algiers in 2024/2025, combining practical laboratory work and simulation.

**Author:** Amani Mouaad  
**Supervision:** Pr. M. Mahmoudi and Mr. Benachour.

The report is in French.
