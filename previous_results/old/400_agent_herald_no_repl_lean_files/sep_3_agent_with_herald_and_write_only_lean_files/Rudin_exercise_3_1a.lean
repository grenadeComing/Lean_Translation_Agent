import Mathlib

open Filter

/-- If a real sequence s converges to L, then the sequence of absolute values |s_n| converges to |L|. -/
theorem tendsto_abs_of_tendsto {s : ℕ → ℝ} {L : ℝ} (h : Tendsto s atTop (𝓝 L)) :
  Tendsto (fun n => |s n|) atTop (𝓝 |L|) := by sorry
