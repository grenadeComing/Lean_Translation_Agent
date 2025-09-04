import Mathlib

open Set Function Metric Complex

/--
Let f : ℂ → ℂ. Assume IsHolomorphicOn f (ball (0:ℂ) 1) and ∀ z ∈ ball (0:ℂ) 1, f z ∈ ball (0:ℂ) 1, and f 0 = 0.
Then |deriv f 0| ≤ 1.
-/

theorem schwarz_lemma_special {f : ℂ → ℂ} (hf : IsHolomorphicOn f (ball (0 : ℂ) 1))
    (hmap : ∀ z ∈ ball (0 : ℂ) 1, f z ∈ ball (0 : ℂ) 1) (h0 : f 0 = 0) : abs (deriv f 0) ≤ 1 := by sorry
