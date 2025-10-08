import Mathlib

/-!
A local inverse function theorem for finite-dimensional real normed spaces.
We state a version that ensures a local inverse g exists and is C^1 on W, and we
record the derivative equality at the point y = f p. The proof is omitted (:= by sorry).
This formulation assumes the derivative at p is given by a continuous linear equivalence A.
-/

open Function Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem inverse_function_theorem_local
  {U : Set E} {f : E → E} {p : E}
  (hU : IsOpen U) (hf : ContDiffOn ℝ 1 f U) (hp : p ∈ U)
  (A : E ≃L[ℝ] E) (hder : HasFDerivAt f (A.toContinuousLinearMap) p) :
  ∃ (V W : Set E) (g : E → E),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧ InjOn f V ∧
    (∀ y ∈ W, g y ∈ V) ∧ (∀ y ∈ W, f (g y) = y) ∧ (∀ x ∈ V, g (f x) = x) ∧
    ContDiffOn ℝ 1 g W ∧
    HasFDerivAt g (A.symm.toContinuousLinearMap) (f p) ∧
    fderiv ℝ g (f p) = A.symm.toContinuousLinearMap :=
by sorry
