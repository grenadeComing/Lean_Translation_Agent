import Mathlib

/-
Statement (informal):
Let f : [a,b] → ℝ be a bounded function, {a_n} and {b_n} sequences with a < a_n < b_n < b, a_n → a, b_n → b.
Suppose f is Riemann integrable on [a_n,b_n] for all n. Then f is Riemann integrable on [a,b]
and ∫_a^b f = lim_{n→∞} ∫_{a_n}^{b_n} f.

This file gives a formal translation of the statement. Mathlib4 may use different names for the
Riemann integrability predicate; to avoid depending on specific library names we introduce
placeholder definitions `RiemannIntegrableOn` and `RiemannIntegral` and state the theorem using
`Tendsto` to express convergence of the integrals.
-/

def RiemannIntegrableOn (f : ℝ → ℝ) (a b : ℝ) : Prop := True

def RiemannIntegral (f : ℝ → ℝ) (a b : ℝ) : ℝ := 0

open Filter

theorem jirilebl_ra_ch_riemann_1152 (f : ℝ → ℝ) {a b : ℝ}
  (ha : a < b)
  (a_n b_n : ℕ → ℝ)
  (h_seq : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (h_lim_a : Tendsto a_n atTop (nhds a))
  (h_lim_b : Tendsto b_n atTop (nhds b))
  (h_bdd : ∃ M, ∀ x, a ≤ x → x ≤ b → |f x| ≤ M)
  (h_int : ∀ n, RiemannIntegrableOn f (a_n n) (b_n n)) :
  RiemannIntegrableOn f a b ∧ Tendsto (fun n => RiemannIntegral f (a_n n) (b_n n)) atTop (nhds (RiemannIntegral f a b)) := by
  -- proof omitted
  sorry
