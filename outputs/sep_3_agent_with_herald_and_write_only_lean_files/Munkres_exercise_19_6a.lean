import Mathlib

open Filter Topology

variable {ι : Type*} {β : ι → Type*} [∀ i, TopologicalSpace (β i)]

/-- Let x₁, x₂, ... be a sequence in the product space Π β i. The sequence f : ℕ → Π β i tends to x iff for each i the coordinate sequence tends to x i. -/
theorem sequence_tendsto_pi_iff {f : ℕ → ∀ i, β i} {x : ∀ i, β i} :
  Tendsto f atTop (𝓝 x) ↔ ∀ i, Tendsto (fun n => (f n) i) atTop (𝓝 (x i)) := by sorry
