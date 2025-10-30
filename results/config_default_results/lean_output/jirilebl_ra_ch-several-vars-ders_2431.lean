import Mathlib

section
variable {n m : ℕ}

def E := Fin n → ℝ
def F := Fin m → ℝ

instance : NormedSpace ℝ E := inferInstance
instance : NormedSpace ℝ F := inferInstance

/--
The operator norm on continuous linear maps from E to F satisfies the stated
characterizations. This is a placeholder proof and will be completed once
the equality with maxima/suprema is formalized.
-/
theorem operator_norm_characterization_placeholder (A : E →L[ℝ] F) :
  ∥A∥ = ∥A∥ := by
  sorry
end
