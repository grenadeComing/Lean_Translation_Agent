import Mathlib

/-- Prove that all entire functions that are also injective take the form f(z) = az + b, a, b ∈ C and a ≠ 0. -/
theorem Liouville_theorem_of_injective_of_entire (f : ℂ → ℂ) (hf_inj: Injective f) (hf_ent : Continuous f) : ∃ a b : ℂ, a ≠ 0 ∧ f = fun z => a * z + b := by sorry
