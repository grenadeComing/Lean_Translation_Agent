import Mathlib

open Filter Topology

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]

theorem sequence_tendsto_pi_iff {x : ℕ → ∀ i, X i} {x0 : ∀ i, X i} :
  Tendsto x atTop (nhds x0) ↔ ∀ i, Tendsto (fun n => x n i) atTop (nhds (x0 i)) := by sorry
