import Mathlib

variable (n : ℕ)

def E := Fin n → ℝ

theorem remainder_is_o
  {f : E → ℝ} {x0 : E}
  (hf : DifferentiableAt ℝ f x0) :
  IsLittleO (fun h : E => f (x0 + h) - f x0 - (fderiv f x0) h)
            (fun h => ‖h‖) (𝓝 0) := by
  -- proof omitted
  sorry
