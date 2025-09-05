import Mathlib

open Complex Set Finset

/--
Suppose f is a holomorphic function on a neighborhood of the closed disk \overline{D}(0,1)
and suppose f(0) ≠ 0. Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,

  |1 - ∑_{k=0}^m (f^{(k)}(0) / (k! * f(0))) z^k| ≤ C |z|^{m+1}.

This is stated here for f : ℂ → ℂ assuming there is an open set U with closedBall 0 1 ⊆ U
and that f is holomorphic on U.
-/
theorem holomorphic_taylor_remainder_disk (f : ℂ → ℂ) (U : Set ℂ)
  (hU : closedBall (0 : ℂ) 1 ⊆ U) (hf : IsHolomorphicOn f U) (hf0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ (m : ℕ) (z : ℂ), |z| ≤ 1 →
    |1 - ∑ k in range (m + 1), (iterated_deriv ℂ k f 0) / (↑(Nat.factorial k) * f 0) * z ^ k| ≤ C * |z| ^ (m + 1) :=
by sorry
