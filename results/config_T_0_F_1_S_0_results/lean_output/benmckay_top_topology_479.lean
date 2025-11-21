import Mathlib

universe u v

variable {ι : Type u} {X : ι → Type v} [∀ i, TopologicalSpace (X i)]

theorem compact_space_pi_iff : CompactSpace (∀ i, X i) ↔ ∀ i, CompactSpace (X i) := by sorry
