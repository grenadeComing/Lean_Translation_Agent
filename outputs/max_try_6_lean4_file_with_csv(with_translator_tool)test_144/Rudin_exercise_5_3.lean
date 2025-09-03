import Mathlib

/-- Rudin exercise 5.3: If g : ℝ → ℝ has bounded derivative |g'| ≤ M,
    then for small enough ε > 0 the map f(x) = x + ε g(x) is injective. -/
theorem Rudin_exercise_5_3 {g : ℝ → ℝ} (M : ℝ) (hder : ∀ x, |deriv g x| ≤ M) :
  ∃ ε0 > 0, ∀ ε, 0 < ε → ε < ε0 → Function.Injective (fun x => x + ε * g x) := by sorry
