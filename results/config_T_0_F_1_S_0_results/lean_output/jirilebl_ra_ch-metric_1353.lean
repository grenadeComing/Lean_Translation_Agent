import Mathlib

/-!
# Sequential characterization of closed sets in metric spaces

We state that in a metric space, a set `s` is closed iff every sequence in `s`
that converges in `X` has its limit in `s`.
-/

theorem is_closed_iff_seq_tendsto_mem {X : Type _} [MetricSpace X] (s : Set X) :
  IsClosed s ↔ ∀ (x : ℕ → X) (a : X), (∀ n, x n ∈ s) → Filter.Tendsto x Filter.atTop (nhds a) → a ∈ s :=
by sorry
