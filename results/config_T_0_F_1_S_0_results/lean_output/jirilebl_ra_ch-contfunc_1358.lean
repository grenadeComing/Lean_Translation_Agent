import Mathlib

open Set

theorem tendsto_mul_const {s : Set ℝ} {c a L M : ℝ} {f g : ℝ → ℝ}
  (hc : c ∈ closure (s \ {c}))
  (hf : ∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ s → x ≠ c → abs (x - c) < δ → abs (f x - L) < ε)
  (hg : ∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ s → x ≠ c → abs (x - c) < δ → abs (g x - M) < ε) :
  (∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ s → x ≠ c → abs (x - c) < δ → abs (a * f x - a * L) < ε) := by sorry
