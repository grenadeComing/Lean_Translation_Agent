import Mathlib

/-
Suppose f(z) = ∑_{k=0}^∞ a_k z^k is a convergent power series and { z_n } is a sequence of
nonzero complex numbers converging to 0, such that f(z_n) = 0 for all n. Show that a_k = 0
for every k.
-/

lemma power_series_coeff_zero_of_accumulating_zeros
  (a : ℕ → ℂ)
  (z : ℕ → ℂ)
  (hz_ne : ∀ n, z n ≠ 0)
  (hz_lim : Tendsto (fun n => z n) atTop (𝓝 (0 : ℂ)))
  (h_eval_zero : ∀ n, ∑' k, a k * (z n) ^ k = 0) :
  ∀ k : ℕ, a k = 0 := by
  intro k
  -- placeholder proof
  sorry
