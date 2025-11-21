import Mathlib

/-- Let X be a topological space and n ∈ ℕ. If f and g are continuous maps X → ℝ^n,
then their pointwise sum is continuous. -/
theorem continuous_add_fin {X : Type*} [TopologicalSpace X] {n : ℕ} (f g : X → (Fin n → ℝ))
  (hf : Continuous f) (hg : Continuous g) : Continuous (f + g) := by sorry
