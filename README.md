# Hardware-Security

## Motivation

With the increasing desire for security, privacy protection, and trustworthy computing, it
becomes vital to protect cryptographic keys stored on computing devices. In the design of
a security system, it is normally assumed that cryptographic keys are stored in
tamper-proof devices such that the price to steal or compromise the keys will be
forbiddingly high. Recently, the concept of physical unclonable function (PUF) has been
applied to key generation and storage.
By means of storing secrets in its unique intrinsic physical features that are randomly
determined by fabrication variations such as the subtle difference in the delays of two
wires with equal length at the design phase, PUF achieves a higher level of protection
without relying on persistent power. The validity of the claim rests on the insight that
attempts in conducting invasive attacks will alter the unique intrinsic features and
therefore destroy the secret hidden in the victim devices with a higher probability. Owing
to its strong unforgeability, PUF has found applications in many security-related areas
such as circuit identification and authentication, hardware intellectual property
protection, device remote activation, and trustworthy computing.

## Introduction

The purpose of this project is to implement a Physical Unclonable Function (PUF) device
in an FPGA and test its performance. The implementation of the PUF logic is done using
combinatorial logic. My goal here is to design a simple and efficient ring oscillator
puf(RO-PUF). For this we have used ring oscillator,8X1 multiplexer,counter and
comparator.We have written an efficient verilog code and burned it on FPGA.From there
we have traced the parameters like area,timing,etc.We have attached the simulated graph
of behavioural model.

## Background

Field-programmable gate arrays (FPGAs) are used to implement digital circuits of
various functionality. Just like other implementation platforms, FPGAs require security4
and resilience to attacks. For many security protocols, a secret key needs to be stored on
FPGA. However, safe storages of keys are usually complicated and expensive to achieve
and the nonvolatile memory, in which the keys can be stored, tends to be vulnerable to
invasive attacks, because the key is stored in a digital form. Physical Unclonable
Functions (PUFs) offer a solution to this issue​ .
Rather than to store the secret keys in memory, they can be generated using PUFs when
they are needed. PUF is a function based on physical properties, which are unique for
each device. These unique physical properties can be used to distinguish various devices
from each other. Therefore, PUFs can be used for identification purposes and for
cryptographic key generation. Two major groups of PUFs, which are suitable for FPGAs
according to their sources of randomness are delay-based and memory-based PUFs. A
very common PUF design is based on SRAM and uses it as a source of randomness,
since many electronic devices have embedded SRAM . This PUF is based on the content
of SRAM after power-up. However some FPGAs initialize their memory after power-up,
so all randomness is lost. That led to proposals of other memory based PUFs such as
Butterfly PUF , Latch PUF and Flip-flop PUF. Delay-based PUFs exploit the random
variations in delays of logic gates and interconnects. One of the first delay based PUFs is
Arbiter PUF . Another examples are Ring Oscillator PUF (ROPUF),and Glitch PUF . In
this work we present a ring oscillator based PUF suitable for FPGAs which showed good
results in terms of good statistical properties, simplicity and efficiency.

## Traditional Solution: Cryptography

The branch of cryptology dealing with the design of algorithms for encryption and
decryption, intended to guarantee the secrecy of messages. An original message is known
as the plain text, while the coded message is called the secret message (cipher text). The
method of converting the original text to cipher text is known as enciphering or
encryption​ ; restoring the plain text from the cipher text is deciphering or ​ decryption​ .
The many schemes used for enciphering comprise the area of study known as
cryptography​ . Such a scheme is known as cipher. Techniques used for decrypting a
message without any knowledge of the encrypting details fall into the area of
cryptanalysis. The cryptography technique is what the lay person’s calls “contravention
the code”. The areas of cryptography and cryptanalysis together are called cryptology.

![Cryptography method](https://www.researchgate.net/profile/Abdel_Nasser_Zaied/publication/319959875/figure/fig3/AS:541169702248448@1506036319917/RSA-Algorithm-Asymmetric-Key-Cryptography.png)

## Applications Of PUFs
  1. Security related areas such as circuit identification and authentication.
  2. Hardware intellectual property protection.\n
  3. Device remote activation.
  4. Trustworthy computing.
  5. Software Licensing and Anonymous Computation.
  6. Low cost authentication.

## Proposed Ring Oscillator PUF
In this section we give a brief description of the proposed ROPUF architecture. In the
first part of this section, we explain the main principle of this ROPUF. Then, the
proposed ROPUF circuit is described and ultimately, some modifications of the ROPUF
design are presented.
In a physical device, no gate can switch instantaneously. ​ The output of every inverter in a
ring oscillator changes a finite amount of time after the input has changed. From here, it
can be easily seen that adding more inverters to the chain increases the total gate delay,
reducing the frequency of oscillation.
The oscillator period is in all cases equal to twice the sum of the individual delays of all
stages.
Each ring oscillates with a unique frequency depending on the characteristics of each of
its inverters, which variate unpredictably from cell to cell due to manufacturing
variations, even within the same chip, and are impossible to imitate. If the frequencies at
which the ring oscillators oscillate are too high, the counters may not be able to count
oscillations; therefore, there is a minimal number of inverters in every ring oscillator
necessary to ensure a suitable oscillating frequency.

### The main principle of the proposed RO-PUF

The main motivation of this proposal was the simplicity of implementation and more
efficient use of ROs. In the classical approach, the frequencies of ROs are compared and
the result of this comparison produces one output bit for PUF. In order to achieve
unpredictability of the PUF outputs, this approach requires all ROs to be mutually
symmetric so that the differences in frequencies of ROs are influenced only by the
random variations in delays of logic gates and interconnects.

![ropuf](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl86td4gxQcpV8TOKbGxR6Fb9H9eWa8iKpCSr8easLabjk6uVEAQ)

## Simulation Result

#### Timing Summary

> Speed Grade: -5
  > - Minimum period: 5.188ns (Maximum Frequency: 192.754MHz).
  > - Minimum input arrival time before clock: 4.125ns.
  > - Maximum output required time after clock: 4.642ns.
  > - Maximum combinational path delay: 166.328ns.
  
> Total REAL time to Xst completion: 30.00 secs

> Total CPU time to Xst completion: 30.51 secs

> Total memory usage is 250492 kilobytes

#### Place And Route

> - Number of Slices 2278 out of 4656 48%.
> - Number of SLICEMs 0 out of 2328 0%.

> Total REAL time to Placer completion: 3 secs.

> Total CPU time to Placer completion: 3 secs.

> Total REAL time to Router completion: 9 secs.

> Total CPU time to Router completion: 9 secs.

#### Map

 >   Number of Slice Flip Flops: 16 out of 9,312 1%
 
 >   Number of 4 input LUTs: 2,317 out of 9,312 24%
 
 >   Logic Distribution:
 >   - Number of occupied Slices: 2,278 out of 4,656 48%
 >   - Number of Slices containing only related logic: 2,278 out of 2,278 100%
 
 >   Total Number of 4 input LUTs: 2,331 out of 9,312 25%
 
> Peak Memory Usage: 221 MB

> Total REAL time to MAP completion: 1 secs

> Total CPU time to MAP completion: 1 secs


## Conclusion

In this era of digital technology, online storage, computing and security, it has becomes
vital to protect cryptographic keys stored on computing devices. The secret data stored in
these devices can be easily read or reverse engineered and copied. In this light, physical
unclonable function (PUF) comes in handy as a new secure and low-cost primitive for
integrated circuit (IC) authentication and counterfeit prevention, since it can identify a
single microelectronic chip by extracting its internal random differences from
manufacturing data. The most beneficial characteristic of PUF is that even if someone
knows the challenge response pair for particular chip, he can’t generate the same chip by
using the same manufacturing process.
