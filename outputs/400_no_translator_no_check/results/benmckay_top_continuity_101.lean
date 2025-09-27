import Mathlib

/-!
Let X be a topological space and let n : ℕ. Suppose that f,g : X → ℝ^n are continuous.
Then f+g : X → ℝ^n is continuous.
We model ℝ^n as Fin n → ℝ.
-/

theorem continuous_add_Rn {X : Type*} [TopologicalSpace X] {n : ℕ} (f g : X → Fin n → ℝ)
  (hf : Continuous f) (hg : Continuous g) : Continuous (fun x => f x + g x) := by
  sorry
