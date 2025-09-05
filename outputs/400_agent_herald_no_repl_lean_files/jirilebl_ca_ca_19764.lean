import Mathlib

/-!
Let U ⊂ ℂ be a domain and f : U → ℂ holomorphic. Then f is analytic on U; that is,
IsHolomorphicOn f U -> IsAnalyticOn f U.
Moreover, for each a ∈ U, there exist coefficients c : ℕ → ℂ and r = dist a (Uᶜ) such that
the power series ∑' n, c n * (z - a)^n has radius r and equals f z for |z - a| < r.
-/

theorem holomorphic_on.is_analytic_on {f : ℂ → ℂ} {U : Set ℂ} (hf : IsHolomorphicOn f U) : IsAnalyticOn f U := by sorry

theorem holomorphic_on.taylor_series_at_radius {f : ℂ → ℂ} {U : Set ℂ} (hf : IsHolomorphicOn f U) {a : ℂ} (ha : a ∈ U) :
  ∃ (c : ℕ → ℂ) (r : ℝ),
    r = dist a (Uᶜ) ∧
    (∀ z : ℂ, |z - a| < r → Summable (fun n => c n * (z - a) ^ n) ∧ (∑' n, c n * (z - a) ^ n) = f z) := by sorry
