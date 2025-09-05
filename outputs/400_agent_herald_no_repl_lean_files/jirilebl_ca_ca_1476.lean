import Mathlib

open Filter

theorem tendsto_to_top_iff_forall_abs {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => (f z : WithTop ℂ)) (𝓝 z0) (𝓝 (⊤ : WithTop ℂ)) ↔
  ∀ M : ℝ, 0 < M → ∃ δ > 0, ∀ z, 0 < |z - z0| ∧ |z - z0| < δ → |f z| > M := by
  sorry
