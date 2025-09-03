import Mathlib

/-- Rudin, Ex. 4.15: Every continuous open mapping f : ℝ → ℝ is monotonic.
    In mathlib style we state the conclusion as: f is either strictly increasing or strictly decreasing. -/
theorem Rudin_exercise_4_15 (f : Real → Real) (hf : Continuous f) (hopen : IsOpenMap f) :
  StrictMono f ∨ StrictAnti f := by sorry
