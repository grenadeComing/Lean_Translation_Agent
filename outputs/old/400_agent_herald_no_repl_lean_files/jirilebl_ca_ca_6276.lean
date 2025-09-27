import Mathlib

open Set

/--
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f' (p) ≠ 0 for some p ∈ U.
Then there exists an open neighborhood V of p such that f(V) is open and f|_V is injective.
-/
theorem exists_open_neighborhood_of_injective_of_holomorphic
  {U : Set ℂ} {f : ℂ → ℂ} {p f' : ℂ}
  (hU : IsOpen U) (hp : p ∈ U) (hf : IsHolomorphicOn f U)
  (hder : HasDerivAt f f' p) (hder_ne : f' ≠ 0) :
  ∃ V : Set ℂ, p ∈ V ∧ IsOpen V ∧ V ⊆ U ∧ IsOpen (f '' V) ∧ Injective (fun x => f x) := by sorry
