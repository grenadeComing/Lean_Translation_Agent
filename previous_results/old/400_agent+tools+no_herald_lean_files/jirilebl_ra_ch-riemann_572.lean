import Mathlib

-- Formalization (translation) of:
-- Let f : [a,b] -> ℝ be bounded. Suppose there exists a sequence of partitions P_k of [a,b]
-- such that lim_{k→∞} (U(P_k,f) - L(P_k,f)) = 0. Show f is Riemann integrable and
-- ∫_a^b f = lim U(P_k,f) = lim L(P_k,f).

-- We do not commit to Mathlib's exact names for partitions / upper / lower sums / Riemann integrability.
-- Instead we declare abstract predicates and functions and state the conclusion. The proof is omitted (sorry).

variable {a b : ℝ} (f : ℝ → ℝ)

-- Abstract notion of a partition of [a,b].
variable (IsPartition : Finset ℝ → ℝ → ℝ → Prop)

-- Abstract upper and lower sum functions associated to a partition and an integrand.
variable (upper_sum lower_sum : Finset ℝ → (ℝ → ℝ) → ℝ)

-- Abstract predicates for boundedness, Riemann integrability and the Riemann integral value.
variable (BoundedOnInterval : (ℝ → ℝ) → ℝ → ℝ → Prop)
variable (RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
variable (RiemannIntegral : (ℝ → ℝ) → ℝ → ℝ → ℝ)

open Nat

theorem riemann_integrable_of_partitions
  (P : ℕ → Finset ℝ)
  (h_part : ∀ k, IsPartition (P k) a b)
  (h_bdd : BoundedOnInterval f a b)
  (h_vanish : ∀ ε > 0, ∃ N, ∀ k ≥ N, |upper_sum (P k) f - lower_sum (P k) f| < ε)
  : ∃ I : ℝ,
    RiemannIntegrableOn f a b ∧
    (∀ ε > 0, ∃ N, ∀ k ≥ N, |upper_sum (P k) f - I| < ε) ∧
    (∀ ε > 0, ∃ N, ∀ k ≥ N, |lower_sum (P k) f - I| < ε) :=
  by
    -- Proof omitted.
    sorry
