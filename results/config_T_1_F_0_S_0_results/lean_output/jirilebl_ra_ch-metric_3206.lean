import Mathlib

variable {X : Type*} [MetricSpace X]

/-- The space of bounded continuous real-valued functions on `X`. -/
def C_b := { f : X → ℝ // Continuous f ∧ ∃ M : ℝ, 0 ≤ M ∧ ∀ x, |f x| ≤ M }

/-- Supremum metric on `C_b`: d(f,g) = sup_{x ∈ X} |f(x)-g(x)|. -/
def sup_dist (f g : C_b) : ℝ :=
  Sup (Set.range fun x => |(f : X → ℝ) x - (g : X → ℝ) x|)

/-- The space `C_b` equipped with the sup metric is a metric space. -/
instance : MetricSpace C_b := by sorry

/-- Convergence with respect to the sup metric is equivalent to uniform convergence.

    Formally: for a sequence `u : ℕ → C_b` and `f : C_b`,
    `Tendsto u atTop (𝓝 f)` iff for every `ε > 0` there exists `N` such that for all
    `n ≥ N` and all `x : X` we have `|u n x - f x| < ε`. -/
theorem tendsto_iff_uniform (u : ℕ → C_b) (f : C_b) :
  Tendsto u atTop (𝓝 f) ↔ ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x : X, |(u n : X → ℝ) x - (f : X → ℝ) x| < ε := by sorry
