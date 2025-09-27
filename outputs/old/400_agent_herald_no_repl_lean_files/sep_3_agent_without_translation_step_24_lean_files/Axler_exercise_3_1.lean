import Mathlib

/-!
Exercise: Show that every linear map on a 1-dimensional vector space is scalar multiplication.
We state the hypothesis as the existence of a nonzero vector whose span is the whole space,
which is equivalent to dim V = 1.
-/

variable {K : Type*} {V : Type*} [Field K] [AddCommGroup V] [Module K V]

theorem one_dim_linear_map_is_scalar (T : V →ₗ[K] V)
  (v0 : V) (v0_ne : v0 ≠ 0) (span_full : Submodule.span K ({v0} : Set V) = ⊤) :
  ∃ a : K, ∀ v : V, T v = a • v := by sorry
