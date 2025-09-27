import Mathlib

open Filter

section improper_integral

variable {f : ℝ → ℝ}
variable (integrable_on_interval : ℝ → Prop)
variable (interval_integral : ℝ → ℝ → ℝ)
variable (has_finite_L1 : Prop)

lemma improper_integral_exists_iff_tails
  (h_int : ∀ M, integrable_on_interval M)
  (h_L1 : has_finite_L1) :
  (∃ I, Tendsto (fun R => interval_integral 0 R) atTop (nhds I)) ↔
  (∀ ε > 0, ∃ M, ∀ R ≥ M, abs (interval_integral M R) < ε) := by
  sorry

end improper_integral
