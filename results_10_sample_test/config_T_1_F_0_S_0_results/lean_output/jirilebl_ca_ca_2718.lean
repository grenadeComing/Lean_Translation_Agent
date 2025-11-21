import Mathlib

/-!
Statement (no proof):
Let U ⊂ ℂ be a domain (open and connected) and suppose that a holomorphic function f : U → ℂ is not constant.
If f(z0) = c and f'(z0) = 0, then either f(z) = c for all z ∈ U, or else if z0 is a zero of f - c of order m,
then there exists a neighborhood V of z0 such that f ⁻¹({c}) ∩ V consists of exactly m points (counted with multiplicities).

The theorem below states a standard local factorization of f - c near z0 (the usual formulation from complex analysis).
This formal statement purposely expresses the existence of m ≥ 1 and a holomorphic g with g(z0) ≠ 0 such that
f(z) - c = (z - z0)^m * g(z) on some neighborhood V ⊆ U. From this one deduces the assertion about the number of
solutions of f(z) = c in that neighborhood (counted with multiplicity).
-/

theorem local_zero_of_holomorphic {
  U : Set ℂ
} (hUopen : IsOpen U) (hUconn : IsConnected U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (z0 : ℂ) (hz0U : z0 ∈ U) (c : ℂ)
  (hfz0 : f z0 = c) (h_nonconst : ¬ (∀ z ∈ U, f z = c)) :
  ∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ),
    IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
    ∃ (g : ℂ → ℂ), IsHolomorphicOn g V ∧ g z0 ≠ 0 ∧ (∀ z ∈ V, f z - c = (z - z0) ^ m * g z) := by sorry
