import Mathlib

/--
Formalization of:
Let R ⊆ ℝ^n be a closed rectangle and f : R → ℝ be Riemann integrable with f(x) ≥ 0 for all x ∈ R.
If the Riemann integral of f over R is 0, then there exists a set E ⊆ R of outer measure zero such that
f(x) = 0 for all x ∈ R \ E.

We state the result using abstract predicates for `is_closed_rectangle`,
`Riemann_integrable_on` (with its integral value), and `outer_measure_zero`.
The proof is omitted and replaced by `by sorry`.
-/

theorem jirilebl_ra_ch_multivar_int_2583 :
  ∀ (n : ℕ)
    (is_closed_rectangle : ∀ (R : Set (Fin n → ℝ)), Prop)
    (Riemann_integrable_on : ∀ (f : (Fin n → ℝ) → ℝ) (R : Set (Fin n → ℝ)) (I : ℝ), Prop)
    (outer_measure_zero : ∀ (E : Set (Fin n → ℝ)), Prop)
    (R : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ) (I : ℝ),
    is_closed_rectangle R →
    Riemann_integrable_on f R I →
    (∀ x ∈ R, 0 ≤ f x) →
    I = 0 →
    ∃ E : Set (Fin n → ℝ), outer_measure_zero E ∧ ∀ x ∈ R \ E, f x = 0 :=
  by
    intros
    -- proof omitted
    sorry
