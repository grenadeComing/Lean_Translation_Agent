import Mathlib
open scoped Topology Real Nat Asymptotics
open Finset Filter Nat Real

/-- Let f(x) = 1/(1+x^2). Show that f is analytic and find a power series for f at 0 and its radius of convergence. -/
theorem hasSum_f_nat_power_series (f : ℝ → ℝ) (hf : f = fun x => 1 / (1 + x ^ 2)) :
    ∀ x, |x| < 1 → HasSum (fun n => (-1 : ℝ) ^ n * x ^ (2 * n)) (f x) := by sorry
