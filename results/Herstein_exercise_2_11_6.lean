import Mathlib
open MulAction Subgroup
open Pointwise
open Equiv Equiv.Perm Finset Function List QuotientGroup

/-- If $P$ is a $p$-Sylow subgroup of $G$ and $P \triangleleft G$, prove that $P$ is the only $p$-Sylow subgroup of $G$. -/
theorem unique_p_Sylow_subgroup_of_normalizer_eq_top_extracted [Group G] {p : ℕ} [Fact (Nat.Prime p)] [Finite (Sylow p G)] (P : Sylow p G) :
 (↑P).normalizer = ⊤ → ∀ (Q : Sylow p G), P = Q := sorry