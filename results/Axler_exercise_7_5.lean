import Mathlib

open ContinuousLinearMap

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  [CompleteSpace V]

/-- An operator T is normal if it commutes with its adjoint. -/
def is_normal (T : V →L[ℂ] V) : Prop := T.comp (T.adjoint) = (T.adjoint).comp T

/-- If V has two nonzero orthogonal vectors (in particular if dim V ≥ 2), the set of normal
operators is not closed under addition (hence not a subspace).

This is the formal translation of Axler Ex. 7.5. -/
theorem normal_operators_not_additive (h : ∃ v w : V, v ≠ (0 : V) ∧ w ≠ (0 : V) ∧ (⟪v, w⟫ = (0 : ℂ))) :
  ¬ (∀ T1 T2 : V →L[ℂ] V, is_normal T1 → is_normal T2 → is_normal (T1 + T2)) := by sorry
