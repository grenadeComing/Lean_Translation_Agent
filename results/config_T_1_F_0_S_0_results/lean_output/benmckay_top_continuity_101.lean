import Mathlib

/-!
Let X be a topological space and let n ∈ ℕ. Suppose that f, g : X → ℝ^n are continuous.
Then f + g : X → ℝ^n is continuous.
-/

variable {X : Type*} [TopologicalSpace X]
variable {n : ℕ}

theorem continuous_add_fin (f g : X → Fin n → ℝ) (hf : Continuous f) (hg : Continuous g) :
  Continuous (f + g) := by sorry