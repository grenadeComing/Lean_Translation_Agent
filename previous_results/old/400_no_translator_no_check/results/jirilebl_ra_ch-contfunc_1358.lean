import Mathlib

open Filter

/-- If f(x) → L as x → c (with x constrained to S), then a * f(x) → a * L as x → c (with x constrained to S). -/
theorem jirilebl_ra_ch_contfunc_1358 {S : Set ℝ} {c L a : ℝ} {f : ℝ → ℝ}
  (hf : Tendsto f (nhdsWithin c S) (nhds L)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by
  simpa [mul_comm] using Filter.Tendsto.mul_const a hf
