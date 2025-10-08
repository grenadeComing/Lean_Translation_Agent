import Mathlib

open Topology

/-- Let X be a topological space and n ∈ ℕ. Suppose f,g : X → ℝ^n are continuous. Then f+g : X → ℝ^n is continuous. -/
theorem continuous_add_Rn {X : Type*} [TopologicalSpace X] {n : Nat} {f g : X → (Fin n → ℝ)}
  (hf : Continuous f) (hg : Continuous g) : Continuous fun x => f x + g x := by sorry
