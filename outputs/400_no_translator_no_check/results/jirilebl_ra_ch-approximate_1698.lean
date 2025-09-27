import Mathlib

/-!
A statement: If f is entire (Differentiable over ℂ) and never zero, then there exists a holomorphic
function g such that f = exp ∘ g. The proof is omitted (by sorry).
-/

theorem exists_complex_log_of_entire_nonvanishing {f : ℂ → ℂ}
  (hf : Differentiable ℂ f) (h0 : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ ∀ z, f z = Complex.exp (g z) := by sorry
