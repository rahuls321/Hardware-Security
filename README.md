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


