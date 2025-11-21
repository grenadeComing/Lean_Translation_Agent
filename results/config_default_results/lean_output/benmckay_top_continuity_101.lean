import Mathlib

variable {X : Type*} [TopologicalSpace X]

variable {n : ℕ}

variable {f g : X → Fin n → ℝ}

/-- Let X be a topological space and n ∈ ℕ. Suppose that f,g : X → ℝ^n are continuous. Then f+g : X → ℝ^n is continuous. -/
theorem continuous_add_fin (hf : Continuous f) (hg : Continuous g) : Continuous (fun x => f x + g x) := by sorry
