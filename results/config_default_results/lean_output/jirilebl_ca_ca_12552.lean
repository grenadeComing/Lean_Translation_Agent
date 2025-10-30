import Mathlib

axiom kth_deriv_at (f : ℂ → ℂ) (x : ℂ) (k : ℕ) : ℂ

/--
Suppose f is holomorphic on a neighborhood of the closed unit disk and f(0) ≠ 0.
Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,
|1 - ∑_{k=0}^m f^(k)(0) / (k! f(0)) z^k| ≤ C |z|^{m+1}.
This is a skeleton Lean translation with a sorry placeholder for the proof.
-/
theorem exists_bound_for_holomorphic_normalized_taylor
  (f : ℂ → ℂ)
  (hf : AnalyticOn ℂ f (ball (0 : ℂ) 1))
  (h0 : f 0 ≠ 0)
  : ∃ C : ℝ, ∀ m : ℕ, ∀ z, z ∈ ball (0 : ℂ) 1 →
    ‖1 - Finset.sum (Finset.range (m + 1)) (fun k => (kth_deriv_at f 0 k / ((Nat.factorial k : ℂ) * f 0)) * z ^ k)‖ ≤
      C * ‖z‖ ^ (m + 1) := by
  sorry
