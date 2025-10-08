import Mathlib

/-- Placeholder predicate for Riemann integrability on [a, b]. In a full development this would
  be replaced by the actual `RiemannIntegrableOn` from mathlib. -/
def RiemannIntegrableOn (f : ℝ → ℝ) (a b : ℝ) : Prop := True

/-- Placeholder for the Riemann integral of `f` on `[a, b]`. -/
def riemannIntegral (f : ℝ → ℝ) (a b : ℝ) : ℝ := 0

open Filter

/-- If (f_n) are Riemann integrable on [a,b] and converge uniformly to f, then f is Riemann
    integrable and the integrals converge to the integral of f. This is stated here using
    placeholders for the integrability predicate and integral; the proof is omitted. -/
theorem uniform_limit_of_riemann_integrables
  {f_n : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {a b : ℝ}
  (h_int : ∀ n, RiemannIntegrableOn (f_n n) a b)
  (h_unif : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → ∀ x, a ≤ x → x ≤ b → |f_n n x - f x| < ε) :
  RiemannIntegrableOn f a b ∧ Tendsto (fun n => riemannIntegral (f_n n) a b) atTop (nhds (riemannIntegral f a b)) := by sorry
