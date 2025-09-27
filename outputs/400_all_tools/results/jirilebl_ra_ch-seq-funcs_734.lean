import Mathlib

/-!
Statement-only translation:
Let f_n : [a,b] → ℝ be Riemann integrable and suppose f_n → f uniformly on [a,b].
Then f is Riemann integrable and ∫_a^b f = lim_{n→∞} ∫_a^b f_n.

We use abstract predicates `RiemannIntegrableOn` and `RiemannIntegral` to state the theorem
without committing to a specific Mathlib API for Riemann integrability.
Proof omitted (:= by sorry).
-/

variable (RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
variable (RiemannIntegral : (ℝ → ℝ) → ℝ → ℝ → ℝ)

open Set Filter

theorem uniform_limit_of_riemann_integrable
  {f : ℕ → ℝ → ℝ} {f_lim : ℝ → ℝ} {a b : ℝ}
  (h_int : ∀ n, RiemannIntegrableOn (f n) a b)
  (h_uniform : ∀ ε, ε > (0 : ℝ) → ∃ N : ℕ, ∀ n, n ≥ N → ∀ x ∈ Icc a b, |f n x - f_lim x| < ε) :
  RiemannIntegrableOn f_lim a b ∧
    Tendsto (fun n => RiemannIntegral (f n) a b) atTop (nhds (RiemannIntegral f_lim a b)) := by sorry
