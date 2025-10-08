import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic on U, and f'(p) ≠ 0 for some p ∈ U. Then there exists an open neighborhood V of p such that f(V) is open and f|_V is injective. -/
theorem exists_open_neighborhood_map_open_and_injective {U : Set ℂ} {f : ℂ → ℂ} {p f' : ℂ}
  (hU : IsOpen U) (hf : HasDerivAt f f' p) (hpU : p ∈ U) (h : f' ≠ 0) :
  ∃ V : Set ℂ, V ⊆ U ∧ IsOpen V ∧ p ∈ V ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) ∧ IsOpen (f '' V) := by sorry
