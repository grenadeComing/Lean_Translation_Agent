import Mathlib

/-
If E ⊆ ℝ is bounded and f : E → ℝ is uniformly continuous, then f is bounded on E.
This file encodes that statement; the proof is omitted (:= by sorry) per instructions.
-/

open Set

variable {E : Set ℝ} {f : ℝ → ℝ}

theorem uniformly_continuous_on.bounded_image_of_bounded
  (hE : ∃ M : ℝ, 0 ≤ M ∧ ∀ x ∈ E, |x| ≤ M)
  (hfu : UniformContinuousOn f E) :
  ∃ R : ℝ, 0 ≤ R ∧ ∀ y ∈ f '' E, |y| ≤ R := by sorry
