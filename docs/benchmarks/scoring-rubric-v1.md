# Benchmark Scoring Rubric V1

## Purpose
Provide a shared scoring surface for early Teaching benchmark pilots so runs can be compared consistently before heavier automation exists.

## Required dimensions
Score each run on the following dimensions using `0`, `1`, or `2`.

### 1. Task completion
- `0`: failed to complete the requested task
- `1`: partially completed but left material gaps
- `2`: completed successfully

### 2. Validation quality
- `0`: no meaningful validation or obviously invalid result
- `1`: some validation present but incomplete or weak
- `2`: explicit and adequate validation against the task requirements

### 3. Protocol adherence
- `0`: ignored or violated core protocol requirements
- `1`: followed protocol partially
- `2`: followed protocol substantially and correctly

### 4. Rework burden
- `0`: required major corrective intervention or restart
- `1`: required some corrections
- `2`: minimal correction required

### 5. Transfer readiness
- `0`: output is too task-specific or brittle to transfer
- `1`: some reusable structure exists
- `2`: output clearly generalizes to the transfer variant

## Additional tracked fields
- total human interventions
- number of corrective iterations
- stop-condition violations
- notes on confounds or evaluator uncertainty

## Summary rating
- `8-10`: strong pilot result
- `5-7`: mixed result
- `0-4`: weak result

## Scoring guidance
- Score observed behavior, not intent.
- If a condition benefits from hidden evaluator help, reduce `protocol adherence` or `rework burden` accordingly.
- If the task itself is underspecified, record that under confounds rather than inflating the score.
