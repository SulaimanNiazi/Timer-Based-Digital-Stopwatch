# Timer Based Digital Stopwatch

## Project Overview

This project implements a digital stopwatch using the PIC12F1572 microcontroller. The stopwatch uses Timer1 to count milliseconds and displays the elapsed time over UART in the format MM:SS:MS. The project is evaluated using software simulation in MPLAB X IDE.

## Objective

- Implement a digital stopwatch using Timer1.
- Display elapsed time over UART in the format MM:SS:MS.
- Use software simulation in MPLAB X IDE to evaluate functionality.

## Skills Tested

- ✅ Timer configuration (1ms resolution)
- ✅ UART data formatting (Sending real-time updates)
- ✅ Interrupt handling
- ✅ Software simulation debugging

## Task Details

1. Use Timer1 to count milliseconds.
2. Convert time to Minutes:Seconds:Milliseconds (MM:SS:MS) format.
3. Send the formatted time over UART every second.
4. Use a software breakpoint in MPLAB X to verify correct time updates.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Building the Project](#building-the-project)
- [Apparatus](#apparatus)
- [Uploading to the Microcontroller](#uploading-to-the-microcontroller)
- [Usage](#usage)
- [Troubleshooting](#troubleshooting)

## Prerequisites

- MPLAB X IDE
- XC8 Compiler
- PIC16F877A Microcontroller
- Proteus (optional)

## Building the Project

1. Open the project in MPLAB X IDE.
2. Ensure the XC8 compiler is selected.
3. Build the project to generate the `.hex` or `.cof` file.
4. Alternatively, you can build the project using Visual Studio Code with the MPLAB extension. Set the project output file path, name, and extension using `Ctrl+Shift+P` and selecting "Edit Project Properties".

## Apparatus

The circuit simulation can be found [here](./Proteus%20Simulation/).

Necessary components that can't be changed:

1. PIC12(L)F1572/3 microcontroller: To run the program.
2. UART module (configured to 8bit receive with 9600 Baud rate): To receive and interpret output.

Optional components depending on your circuit:

1. Button: For start/stop.
7. 1 Resistors.

## Uploading to the Microcontroller

After building the project, upload the generated `.hex` or `.cof` file to the PIC16F877A microcontroller using a suitable programmer. The file can be found in either of the following paths:

1. In case of using MPLAB X IDE: [dist\default\debug\Timer_Based_Digital_Stopwatch.X.debug.cof](./dist/default/debug/Timer_Based_Digital_Stopwatch.X.debug.cof)
2. In case of using Visual Studio Code (if the file name was set as default): **out\Timer_Based_Digital_Stopwatch\default.hex**

## Usage

1. The code is largely customizable, however for changing USART pins please consult the [datasheet](https://ww1.microchip.com/downloads/en/devicedoc/40001723d.pdf)

## Troubleshooting

- Ensure all connections are secure and correct.
- Verify the microcontroller is programmed with the correct `.hex` or `.cof` file.
- Check the power supply to the microcontroller and other components.
