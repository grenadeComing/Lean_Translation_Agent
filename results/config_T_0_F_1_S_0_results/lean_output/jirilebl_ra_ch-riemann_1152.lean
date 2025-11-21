import Mathlib

/--
Let f : [a,b] → ℝ be a bounded function, {a_n} and {b_n} sequences with a < a_n < b_n < b,
lim a_n = a, lim b_n = b. Suppose f is Riemann integrable on [a_n,b_n] for all n.
Then f is Riemann integrable on [a,b] and ∫_a^b f = lim_{n→∞} ∫_{a_n}^{b_n} f.

We state this using abstract predicates IsRiemannIntegrableOn and a corresponding
riemann_integral function; the proof is omitted.
-/

theorem jirilebl_ra_ch_riemann_1152
  (IsRiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
  (riemann_integral : (ℝ → ℝ) → ℝ → ℝ → ℝ)
  (f : ℝ → ℝ) (a b : ℝ) (a_n b_n : ℕ → ℝ)
  (hbounded : ∃ M : ℝ, ∀ x, a ≤ x ∧ x ≤ b → |f x| ≤ M)
  (hab : a < b)
  (hseq : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (ha_lim : ∀ ε : ℝ, ε > 0 → ∃ N, ∀ n : ℕ, n ≥ N → |a_n n - a| < ε)
  (hb_lim : ∀ ε : ℝ, ε > 0 → ∃ N, ∀ n : ℕ, n ≥ N → |b_n n - b| < ε)
  (hints : ∀ n, IsRiemannIntegrableOn f (a_n n) (b_n n)) :
  IsRiemannIntegrableOn f a b ∧
    (∀ ε : ℝ, ε > 0 → ∃ N, ∀ n : ℕ, n ≥ N → |riemann_integral f a b - riemann_integral f (a_n n) (b_n n)| < ε) := by
  sorry
