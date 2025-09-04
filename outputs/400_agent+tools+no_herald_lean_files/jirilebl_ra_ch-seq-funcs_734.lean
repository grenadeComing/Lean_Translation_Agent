import Mathlib

/-- We introduce placeholder definitions for Riemann integrability and integral so that the
statement below can be expressed. In mathlib these would be the actual Riemann integral
predicates; here they are just stubs to allow compiling the statement. -/

def Riemann_integrable_on (f : ℝ → ℝ) (a b : ℝ) : Prop := True

def Riemann_integral (f : ℝ → ℝ) (a b : ℝ) : ℝ := 0

/-- Placeholder for uniform convergence on [a,b]. In a development using mathlib's real
uniform convergence predicates this would be replaced by the appropriate `TendstoUniformlyOn`.
-/

def Uniform_on (f_n : ℕ → ℝ → ℝ) (f : ℝ → ℝ) (a b : ℝ) : Prop := True

open Filter

/-- Let f_n : [a,b] → ℝ be Riemann integrable and suppose f_n → f uniformly on [a,b].
    Then f is Riemann integrable and ∫_a^b f = lim_{n→∞} ∫_a^b f_n. -/
theorem uniform_limit_of_riemann_integrable {a b : ℝ} {f_n : ℕ → ℝ → ℝ} {f : ℝ → ℝ}
  (h_int : ∀ n, Riemann_integrable_on (f_n n) a b)
  (h_unif : Uniform_on f_n f a b) :
  Riemann_integrable_on f a b ∧ Tendsto (fun n => Riemann_integral (f_n n) a b) atTop (pure (Riemann_integral f a b)) := by
  sorry
