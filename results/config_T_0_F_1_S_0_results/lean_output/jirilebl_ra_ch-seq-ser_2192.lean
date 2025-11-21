import Mathlib

open Filter

variable {x : ℕ → ℝ} {ℓ : ℝ}

theorem jirilebl_ra_ch_seq_ser_2192
  (hbound : ∃ M : ℝ, ∀ n, |x n| ≤ M)
  (hsub : ∀ (s : ℕ → ℕ), StrictMono s → ∀ (a : ℝ),
    Tendsto (x ∘ s) atTop (nhds a) → a = ℓ) :
  Tendsto x atTop (nhds ℓ) := by sorry
