# Lab09-3-26-2026
# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item            | Description                                       | Value |
| --------------- | ------------------------------------------------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25%   |
| Question 1      | Your answers to the question                      | 25%   |
| Question 2      | Your answers to the question                      | 25%   |
| Question 3      | Your answers to the question                      | 25%   |

## Names

Jack Elliot, Mark Moorefield

## Summary

In this lab we were given 2 parts. The first part was to create a d latch, and the second part was to use that d latch to create an 8 bit memory system using 2 demuxes, a single mux, and 8 d latches.

## Lab Questions

### Why can we not just use structural Verilog to implement latches?

Since latches output can change at any time using structural verilog would cause issues in the timing diagram, and may lead to wrong outputs in practice. On top of that it would make the file a lot bigger than it needs to be and harder to manage then doing it the way that we did it in this lab.

### What is the meaning of always @(\*) in a sensitivity block?

It is used to automatically get every input signal and is used to for combinational logic. It makes it so we don't have to list out every single input manually. On top of that it makes it so if we add a new input it will automatically be added to the list and we don't have to do anything extra.

### What importance is memory to digital circuits?

It allows us to use data storage, retrieval, and process information allowing for more complex logic circuits then just having simple inputs and outputs. This is seen in the d latch that we created where the circuit remembers a single bit of information that is then used for the next cycle.
