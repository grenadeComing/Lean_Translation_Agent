import Mathlib

open Classical

/-- Putnam 2018 A5: If f : ℝ → ℝ is C^∞ with f(0)=0, f(1)=1, and f(x) ≥ 0 for all x, then there exist n≥1 and x such that f^{(n)}(x) < 0. -/
theorem putnam_exercise_2018_a5 (f : ℝ → ℝ) (hf_smooth : ContDiff ℝ ⊤ f) (h0 : f 0 = 0) (h1 : f 1 = 1) (hnonneg : ∀ x, f x ≥ 0) :
  ∃ (n : ℕ) (x : ℝ), n ≥ 1 ∧ (fun x => (Deriv^[n]) f x) x < 0 := by sorry
