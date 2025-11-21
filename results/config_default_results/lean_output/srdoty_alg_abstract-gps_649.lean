import Mathlib

universe u

theorem ring_iff_components {R : Type u} :
  Nonempty (Ring R) ↔ (Nonempty (AddCommGroup R) ∧ Nonempty (Monoid R) ∧ Nonempty (Distrib R)) := by sorry
