import Mathlib

universe u v

variables {P : Type u} {Q : Type v}
variable (φ : P → Q)
variable (smooth_map : Prop) (same_dim : Prop)
variable (is_local_diffeo : P → Prop)
variable (is_dense : Set P → Prop)

/-- Formal translation: if φ is a smooth map between manifolds of the same
    dimension, then there exists a dense subset S of P such that every point of S
    has a neighborhood on which φ is a local diffeomorphism. -/
theorem smooth_map_same_dim_has_dense_local_diffeo_set
  (h_smooth : smooth_map) (h_dim : same_dim) :
  ∃ (S : Set P), is_dense S ∧ (∀ p : P, p ∈ S → is_local_diffeo p) := by
  sorry
