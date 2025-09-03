import Mathlib

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]

variable {x : ∀ i, X i} (x_seq : ℕ → ∀ i, X i)

/-- A sequence x_seq in the product space Π i, X i converges to x iff each coordinate sequence
    converges to the corresponding coordinate of x. -/
theorem tendsto_pi_iff :
  Filter.Tendsto x_seq Filter.atTop (nhds x) ↔ ∀ i, Filter.Tendsto (fun n => x_seq n i) Filter.atTop (nhds (x i)) := by sorry
