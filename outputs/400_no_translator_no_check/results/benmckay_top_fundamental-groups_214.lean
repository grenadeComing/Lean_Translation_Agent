import Mathlib

/-!
A formal translation placeholder for the statement:
Let φ : P → Q be a smooth map of manifolds with dim P = dim Q.
Show that there is a dense set of points p0 ∈ P such that φ is a local
diffeomorphism in a neighborhood of each such p0.

This file records the statement abstractly using predicates for smoothness,
dimension equality, and local diffeomorphism; the proof is omitted (:= by sorry).
-/

universe u v

variable (P : Type u) (Q : Type v)
variable (φ : P → Q)

-- Abstract predicates to avoid depending on a particular manifold API in this translation.
variable (SmoothMap : (P → Q) → Prop)
variable (dim_eq : Prop)
variable (IsLocalDiffeoAt : (P → Q) → P → Prop)
variable (Dense : Set P → Prop)

/-- If φ is a smooth map between manifolds of the same dimension, then there exists
a dense set of points at which φ is a local diffeomorphism.  (Statement only, proof omitted.) -/
theorem exists_dense_local_diffeo
  (hφ : SmoothMap φ)
  (hdim : dim_eq) :
  ∃ S : Set P, Dense S ∧ ∀ p ∈ S, IsLocalDiffeoAt φ p :=
by sorry
